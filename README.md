# FreshcomWeb

The web front end for [Freshcom](https://github.com/freshcom/freshcom).

## Get Started

A quick start guide to install, setup and run Freshcom Web.

### Environment Variables

Setup database credentials for the Event Store and Projection Database in the
`freshcom_web/.env`.

Copy the file `freshcom_web/.env.example` to `freshcom_web/.env` and edit it
as needed.

### Quick Start

The quick way to install and setup:

```bash
./setup.sh
```

Now to run Freshcom Web interface just follow the instructions in the [Run](#Run) section.

If you prefer to do all by yourself see [Install](#Install) and [Setup](#Setup) sections.

### Install

```bash
mkdir app && cd app
```

Clone the Freshcom backend with:
```bash
git clone https://github.com/freshcom/freshcom.git
```

Clone the Freshcom Web with:
```bash
git clone https://github.com/freshcom/freshcom_web && cd freshcom_web
```

Install dependencies with:
```bash
mix deps.get && mix compile
```

### Setup

Create and migrate the projections database with:
```bash
mix ecto.create -r Freshcom.Repo && mix ecto.migrate -r Freshcom.Repo
```

Create and migrate the event store database with:
```bash
mix event_store.create -r Freshcom.Repo && mix event_store.init -r Freshcom.Repo
```

### Run


To start your Phoenix server:
```bash
mix phx.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


## Deploy to Production

Ready to run in production? Please [check the Phoenix deployment guides](http://www.phoenixframework.org/docs/deployment).


## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

