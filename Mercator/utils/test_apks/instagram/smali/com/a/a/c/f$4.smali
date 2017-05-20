.class Lcom/a/a/c/f$4;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/f;->u()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/f;


# direct methods
.method constructor <init>(Lcom/a/a/c/f;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/a/a/c/f$4;->a:Lcom/a/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Lcom/a/a/c/f$4;->a:Lcom/a/a/c/f;

    invoke-static {v0}, Lcom/a/a/c/f;->a(Lcom/a/a/c/f;)Lcom/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/h;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/a/a/c/f$4;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
