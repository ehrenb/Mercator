.class Lcom/a/a/c/f$5;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lio/fabric/sdk/android/services/e/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/f;->x()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/e/q$b",
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
    .line 914
    iput-object p1, p0, Lcom/a/a/c/f$5;->a:Lcom/a/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/fabric/sdk/android/services/e/t;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 917
    iget-object v1, p1, Lio/fabric/sdk/android/services/e/t;->d:Lio/fabric/sdk/android/services/e/m;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/e/m;->a:Z

    if-eqz v1, :cond_1

    .line 918
    iget-object v1, p0, Lcom/a/a/c/f$5;->a:Lcom/a/a/c/f;

    invoke-virtual {v1}, Lcom/a/a/c/f;->y()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 920
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lio/fabric/sdk/android/services/e/t;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0, p1}, Lcom/a/a/c/f$5;->a(Lio/fabric/sdk/android/services/e/t;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
