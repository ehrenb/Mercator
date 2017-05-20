.class public Lcom/seatgeek/sixpack/NoAlternativesException;
.super Ljava/lang/RuntimeException;
.source "NoAlternativesException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "You must specify at least one Alternative for an Experiment"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
