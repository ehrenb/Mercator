.class public Lcom/seatgeek/sixpack/NoExperimentNameException;
.super Ljava/lang/RuntimeException;
.source "NoExperimentNameException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "Your Experiment must have a non-null, non-empty name"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
