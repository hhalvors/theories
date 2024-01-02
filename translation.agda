open import Data.List
open import Data.Char

data Prop (X : List Char) : Set where
  atom : (x : Char) -> Elem x X -> Prop X
  _&_ : (a b : Prop X) -> Prop X
