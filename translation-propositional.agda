open import Data.List
open import Data.Char
open import Data.Nat
open import Agda.Primitive

open import Relation.Binary.PropositionalEquality

record Signature : Set where
  constructor mkSig
  field
    atoms : List String

data Proposition (X : Signature) : Set where
  Atom : (x : String) → Elem x (Signature.atoms X) → Proposition X
  _∧_ : Proposition X → Proposition X → Proposition X
  _∨_ : Proposition X → Proposition X → Proposition X
  _→_ : Proposition X → Proposition X → Proposition X
  ¬_ : Proposition X → Proposition X

mySignature : Signature
mySignature = mkSig ["p", "q"]

exampleProposition : Proposition mySignature
exampleProposition = Atom "p" {!!} ∧ Atom "q" {!!}

f : (x : String) → Elem x (Signature.atoms sigX) → Proposition sigY
f "p" proofP = Atom "a" {proofA} ∧ Atom "b" {proofB}  -- maps "p" to a conjunction in sigY
f "q" proofQ = Atom "a" {proofA} ∨ Atom "b" {proofB}  -- maps "q" to a disjunction in sigY
-- Handle other atomic cases as needed

-- Optional: default case for atoms not in sigX, if necessary

Reconstrual : Signature → Signature → Set₁
Reconstrual X Y = (x : String) → Elem x (Signature.atoms X) → Proposition Y






