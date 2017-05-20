.class public Lcom/facebook/e$a;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a()Lcom/facebook/e;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/c/e;

    invoke-direct {v0}, Lcom/facebook/c/e;-><init>()V

    return-object v0
.end method
