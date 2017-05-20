.class Lcom/a/a/c/f$1;
.super Lio/fabric/sdk/android/services/concurrency/g;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/f;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/g",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/f;


# direct methods
.method constructor <init>(Lcom/a/a/c/f;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/a/a/c/f$1;->a:Lcom/a/a/c/f;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/a/a/c/f$1;->a:Lcom/a/a/c/f;

    invoke-virtual {v0}, Lcom/a/a/c/f;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b()Lio/fabric/sdk/android/services/concurrency/e;
    .locals 1

    .prologue
    .line 797
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/e;->d:Lio/fabric/sdk/android/services/concurrency/e;

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
    .line 789
    invoke-virtual {p0}, Lcom/a/a/c/f$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
