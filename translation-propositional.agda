open import Data.List
open import Data.Char
open import Data.Nat
open import Agda.Primitive

data Proposition : Set where
  -- Define a constructor for atomic propositions
  Atom : String → Proposition

PropositionalSignature : Set
PropositionalSignature = List Proposition


