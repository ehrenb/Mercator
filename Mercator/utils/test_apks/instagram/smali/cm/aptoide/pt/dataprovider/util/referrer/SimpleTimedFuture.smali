.class public Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;
.super Ljava/lang/Object;
.source "SimpleTimedFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DELAY:I

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 17
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    const/16 v1, 0x64

    iput v1, p0, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->DELAY:I

    .line 25
    iget v1, p0, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->DELAY:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->DELAY:I

    mul-int/2addr v1, v0

    if-le v1, p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/InterruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeOut reached! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 36
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->value:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->value:Ljava/lang/Object;

    .line 45
    return-void
.end method
