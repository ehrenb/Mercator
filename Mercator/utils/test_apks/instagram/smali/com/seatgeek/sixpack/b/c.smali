.class public Lcom/seatgeek/sixpack/b/c;
.super Ljava/lang/Object;
.source "ParticipateResponse.java"


# instance fields
.field public alternative:Lcom/seatgeek/sixpack/b/a;

.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "client_id"
    .end annotation
.end field

.field public experiment:Lcom/seatgeek/sixpack/b/b;

.field private selectedAlternative:Lcom/seatgeek/sixpack/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/seatgeek/sixpack/a;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/seatgeek/sixpack/b/c;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/seatgeek/sixpack/b/c;->alternative:Lcom/seatgeek/sixpack/b/a;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/seatgeek/sixpack/a;

    iget-object v1, p0, Lcom/seatgeek/sixpack/b/c;->alternative:Lcom/seatgeek/sixpack/b/a;

    iget-object v1, v1, Lcom/seatgeek/sixpack/b/a;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/seatgeek/sixpack/a;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/seatgeek/sixpack/b/c;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/seatgeek/sixpack/b/c;->selectedAlternative:Lcom/seatgeek/sixpack/a;

    return-object v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
