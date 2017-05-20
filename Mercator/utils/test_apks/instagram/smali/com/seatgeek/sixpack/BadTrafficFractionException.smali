.class public Lcom/seatgeek/sixpack/BadTrafficFractionException;
.super Ljava/lang/RuntimeException;
.source "BadTrafficFractionException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "Traffic Fraction must be >= 0 and <= 1"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
