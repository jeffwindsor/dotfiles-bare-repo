# Haskell Cheatsheet

## Semigroup and Monoids

* **Semigroup** `append` concatenates two values `a -> a -> a`, also known as `<>`
* **Monoid** `mempty` defines an empty value for its type
* A **Monoid** is a **Semigroup**

## Functors, Applicatives and Monads

* **Functor's** `fmap` applies a function `(a -> b)` to a wrapped value `m a`, also know as `<$>`
    ```haskell
    > fmap (*2) [1..4]
      [2,4,6,8]
    > fmap (*2) (Just 11)
      Just 22
    > fmap (*2) Nothing
      Nothing
    ```
* **Applicative's** `apply` applies a wrapped function `m (a -> b)` to a wrapped value `m a`, also know as `<*>`
* **Monads** `bind` applies a wrapping function `(a -> m b)` to a wrapped value `m a`, also know as `>>=`
* A **Monad** is an **Applicative**
* An **Applicative** is a **Functor**

## Do Notation

The de-sugaring is defined recursively by the rules:

```haskell
  do { a <- f; m } becomes  f >>= \a -> do { m }
  do { f; m }      becomes  f >> do { m }
  do { m }         becomes  m
```

 So the following are equivalent:

```haskell
    do                  |
      a <- f            |  f >>= \a ->
      b <- g            |    g >>= \b ->
      c <- h            |      h >>= \c ->
      return (a, b, c)  |        return (a, b, c)
```

## Monads
The below `sequence` function that takes a list of wrapped values `[m a]` and returns a wrapped list of values `m [a]`
```haskell
sequence :: Monad m => [m a] -> m [a]
sequence = foldr f (return [])
    where f :: Monad m => m t -> m [t] -> m [t]
```
`sequence` abstracts out three fundamental concepts of computation (Failure, Collections, and Effects) for reuse in higher level abstractions.
```haskell
-- Failures
> sequence [Just 3, Just 4]
    Just [3,4]
> sequence [Just 3, Just 4, Nothing]
    Nothing

-- Collection
> sequence [[1,2,3],[10,20,30]]
    [[1,10],[1,20],[1,30],[2,10],[2,20],[2,30],[3,10],[3,20],[3,30]]

-- Effects (Getting input) getLine :: IO String
> sequence [getLine, getLine]
    ["Line 1 from IO","Line 2 from IO"]
```

### Survey of Monad uses

* `State Monad`: allows functions within a stateful monadic context to access and modify shared state
* `Writer Monad`: write lazy stream of values in a monadic context
* `Reader Monad`: access shared immutable state in a monadic context

### Transformers

* Monad transformers allow stacking monadic computations with an interface to exchange values between the levels, called `lift`.
* Transformers compose outside-in and are unrolled inside out.
* Monads have kind `(* -> *)` so monad transformers (which take monads to monads) have kind of `((* -> *) -> * -> *)`
    ```haskell
    Monad (m :: * -> *)
    MonadTrans (t :: (* -> *) -> * -> *)
    ```
* Example: Composing `Reader` and `Maybe` would be type `ReaderT t Maybe a`
    ```haskell
    ReaderT Environment (Maybe Int)
    ```

## Cardinality (and the Curry–Howard Isomorphism)
loosely stating that every statement in logic is equivalent to some computer program, and vice versa.

| Algebra | Logic | Type Example | Cardinality |
|---|---|---|---|
| a + b | a ∨ b | Either a b | `|a|` + `|b|` |
| a × b | a ∧ b | (a, b) | `|a|` * `|b|` |
| b ^ a | a ==> b | (a -> b) | `|b|` ^ `|a|` |

Cardinality shown as type surrounded by `|` (cardinality of `a` is `|a|`)

Other examples:

* `|Maybe a|` has cardinality of (1 + `|a|`) since Nothing has only one instance
    ```haskell
    Maybe a = Nothing | Just a
    ```
* `|MixedFraction a|` = `|Word8|` x `|a|` x `|a|` = 256 x `|a|` x `|a|`
    ```haskell
    data MixedFraction a = Fraction { mixedBit :: Word8, numerator :: a, denominator :: a}
    ```




## Exercises
* Cardinality1 - Determine the cardinality of `Either Bool (Bool, Maybe Bool) -> Bool`


## Answers
* Cardinality1
    ```haskell
    |Either Bool (Bool, Maybe Bool) -> Bool|
    = |Bool| ^ |Either Bool (Bool, Maybe Bool)|
    = |Bool| ^ (|Bool| + (|Bool| x |Maybe Bool|))
    = |Bool| ^ (|Bool| + (|Bool| x (|Bool| + 1)))
    = 2^(2 + (2 * (2 + 1)))
    = 2^(2 + (2 * 3))
    = 2^(2 + 6)
    = 2^8
    = 256
    ```