.class public Lcom/seatgeek/sixpack/a/a;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptorLoggerAdapter.java"

# interfaces
.implements Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# instance fields
.field private final logger:Lcom/seatgeek/sixpack/a/d;


# direct methods
.method public constructor <init>(Lcom/seatgeek/sixpack/a/d;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/seatgeek/sixpack/a/a;->logger:Lcom/seatgeek/sixpack/a/d;

    .line 13
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/seatgeek/sixpack/a/a;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    invoke-interface {v0, v1, p1}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
