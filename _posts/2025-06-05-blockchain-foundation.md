---
title: "Blockchain: The Foundation"
date: 2025-05-06
categories: [Blockchain]
tags: [blockchain, technology, decentralization, cryptocurrency, smart contracts]
---

## Let's start with a relatable scenario:

You and your friends are going on a trip. Instead of Venmo-ing each other after every small purchase, you just take turns covering things: you buy lunch, Salley grabs the coffees, someone else pays for gas. You keep a running tab and settle up later. But for this system to work, a few things have to happen:

- You need a record of who paid for what  
- Everyone needs to see the same record  
- Everyone has to agree on what happened, because if Salley says you owe her $10 for coffee and you don't remember it, the system breaks  
- No one can spend money they don't have, meaning you can't offer to cover dinner if your account is empty  

This is basically what the blockchain does, just at a global scale. Blockchain is a shared, digital ledger of transactions that follows those same rules:

- Everyone sees the same record  
- Nothing is added unless the majority agrees  
- Pre-specific rules can be enforced, such as you can't spend what you don't have  

Let's start with the network of computers. Instead of a group of friends, envision a group of computers talking to each other to make sure they are on the same page. Just as every friend in the group keeps track of the transactions to make sure nobody cheats, every computer keeps track of the blockchain. And when a new transaction happens, just as everyone in the group records it, every computer adds it to their blockchain.

But if everyone keeps a copy of the entire chain, isn't that a huge waste of space?

It might seem inefficient compared to a single database. However, this redundancy is intentional. It's what makes the system decentralized and secure. Instead of trusting one authority, the network relies on thousands of copies constantly cross-checking each other. If someone tries to tamper with their version, it won't match the rest and gets ignored.

---

## How a Block Is Added

Let's say people are sending and receiving money on the blockchain. These transactions start out as pending, just floating around in a pool of unconfirmed activity. To get finalized, they need to be added to a block. A block is just a bundle of transactions, and once it's added to the blockchain, all those transactions become official.

But before a block can be added to the chain, or "mined," it needs a special validation stamp that proves to all the other computers in the network that it's legitimate. That stamp is found by solving a very difficult math puzzle similar to finding the right key to open a door.

There's no shortcut. It's not about being smart or fast, it's a guessing game. Computers have to try different numbers, called nonces, again and again until one of them produces a result that meets very strict mathematical criteria. This nonce acts as the key to open the door. It might be very hard to find, but once you do, everyone else can verify you have found the right key simply by using it to open the door.

Finding this key is very challenging though, every key looks completely different and there's no way to tell which one might work. You just have to try every key until one clicks. Now scale that up: miners around the world are trying around **350 trillion guesses per second**, and even with all that power combined, it still takes roughly 10 minutes to find the correct one.

To visualize how difficult this is, imagine trying to find a single grain of sand that's been painted gold, hidden somewhere in **eight Olympic-sized swimming pools** filled with sand. You just start scooping handfuls until you find the golden grain. That's the level of difficulty we're talking about, and that's what keeps the blockchain secure.

---

## Let's walk through validating a transaction:

When you send money using the blockchain, your transaction is broadcast to the entire network. That means your computer essentially shouts to every other computer, or node, it's connected to:  
"Hey, Lainey just sent 0.5 coins to Rob!"

This is how the ledger gets updated, by making sure everyone hears the same message.

At first glance, that might seem unreliable. What if some computers don't hear the message? What if the transaction gets lost in the noise of a global network? It sounds chaotic.

But here's where the design shines. Transactions aren't just sent once, they're constantly echoed across the network. If one node misses it, another passes it along. Like a game of telephone, except the goal is accuracy and repetition. The network is built to flood itself with messages, ensuring that even if some nodes don't catch it the first time, they will hear it soon enough.

This redundancy is why it works. The network forms a dense web where messages bounce around until virtually every node has received them. So even though your transaction starts off floating, it very quickly reaches enough of the network to be seen, validated, and added to the pending pool.

That pool is where miners come in. They grab transactions from it and start building a block, while also racing to solve the math puzzle that makes the block official.

Importantly, your transaction isn't confirmed the moment you send it. At that point, it's just pending. It only becomes real, final, and unchangeable once it's included in a block that successfully gets mined and added to the blockchain.

In the extremely rare case that a valid transaction isn't heard by the network, it can simply be re-broadcast. But this is almost never needed. The system is designed to make sure legitimate messages are heard.

---

## Let's Recap: How a Transaction Gets Finalized

Here's how it all comes together:

- You enter into a transaction  
- It gets broadcast across the network  
- Nodes pass it along and confirm it's valid  
- It enters the pool of pending transactions  
- Miners collect transactions and try to build a valid block  
- One miner solves the puzzle  
- That miner shares the block  
- The network verifies it  
- The block is added to the chain, and your transaction is now locked in permanently  

Once that happens, your transaction is locked in, permanently written into the ledger for everyone to see.

---

## Can You Hack the Blockchain? Let's Try

Let's say Rob wants to cheat the system. He wants to fake a transaction that says you paid him $1,000,000 — free money. Here's what would happen:

**Step 1: Rob fakes a transaction**  
He writes up a transaction that says, "Lainey pays Rob $1,000,000," and broadcasts it to the network.

**Step 2: The network checks it**  
Every node starts verifying the transaction. Blockchain transactions require a signature from the sender's private key, which is like a secret password that only the sender knows — and Lainey never signed this. That's a problem. Without her private key, there's no proof that the transaction is legitimate. It's like trying to forge a check without the actual signature.

Because Rob can't fake Lainey's signature, the network instantly rejects the transaction. And brute-forcing Lainey's private key isn't an option — it would take longer than the lifespan of the universe, even with the world's fastest computers.

**Step 3: Rob tries to sneak it in**  
Rob decides to take things further. He mines a block that includes the fake transaction. Against all odds, let's say he solves the puzzle and broadcasts the block.

Still, it doesn't work. The network sees that the transaction inside the block is invalid, so honest nodes reject the whole block. It never makes it into the chain.

**Step 4: Rob builds a fake version of the blockchain**  
Now Rob goes all in. He creates an entirely fake version of the blockchain with his transaction included, and starts mining fake blocks on top of it, trying to make his version the one the network accepts.

But here's the catch: the network only accepts the longest valid chain, and Rob would need to mine faster than the rest of the world combined to get ahead. That means he'd need to control more than 50% of the global mining power — something known as a **51% attack**.

In reality, this would cost billions of dollars in hardware and energy. And even if he pulled it off, the rest of the network could respond quickly, fork away from his chain, and neutralize the attack.

---

## Why Go to All This Trouble?

It's a fair question. Why create such a complex, energy-intensive system just to keep a record of transactions? Because the old way — banks, payment processors, centralized systems — has major flaws:

- Banks can fail. If one collapses, your money could vanish or get frozen.  
- Governments can print more money at will. That leads to inflation, shrinking the value of your savings.  
- You have no control over either of these. Your finances are always at risk in someone else's hands  

Blockchain was built as a safer alternative. A system where:

- No one can devalue your money by creating more currency out of thin air  
- You hold your own assets, secured by cryptographic proof  
- There is no CEO or central party who can make a bad call, get hacked, or cause a collapse  

Many blockchains also have a fixed supply. That means inflation isn't possible. So instead of your money losing value over time, it can actually hold it.

The whole point is to remove the need for trust. You don't have to trust a person or an institution — you just trust the code.

---

## Why do Miners Participate?

Miners aren't donating their computing power out of generosity. They're getting paid. Each time a miner successfully adds a block, they earn two things:

- A block reward, which is a set number of new coins created with that block  
- A transaction fee, made up of small incentives users attach to their transactions  

It's like earning a paycheck and tips for doing the job of keeping the system running and honest.

---

## In short, what is the blockchain?

The blockchain is a distributed network made up of thousands of computers around the world. Instead of relying on a central authority, like a bank or government, it runs on a shared set of rules enforced by math and code. Every participant keeps their own copy of the same digital ledger, and no one can change it unless the network as a whole agrees.

When someone makes a transaction, it's broadcast to the network, checked for validity, and added to a block. That block is only accepted once a computer solves a complex math puzzle, proving that real computational work went into it. This puzzle-solving process makes the system extremely secure and difficult to tamper with.

No single person controls the blockchain. There's no CEO who can shut it down, no government who can quietly print more money, and no bank that can lock you out of your funds. You hold your own money, and only you can authorize transactions using your private key.

Because many blockchains have a fixed supply, your money isn't vulnerable to inflation the same way traditional currency is. No one can dilute your purchasing power by creating more coins.

It's a system designed to be trustless, transparent, and resilient — and it works because everyone in the network plays by the same rules, enforced not by people, but by math.
