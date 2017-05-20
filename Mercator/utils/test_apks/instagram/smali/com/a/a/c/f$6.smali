.class Lcom/a/a/c/f$6;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lio/fabric/sdk/android/services/e/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/f;->z()Z
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
    .line 938
    iput-object p1, p0, Lcom/a/a/c/f$6;->a:Lcom/a/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/fabric/sdk/android/services/e/t;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 941
    const/4 v0, 0x1

    .line 943
    iget-object v1, p0, Lcom/a/a/c/f$6;->a:Lcom/a/a/c/f;

    invoke-virtual {v1}, Lcom/a/a/c/f;->F()Lio/fabric/sdk/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/c;->b()Landroid/app/Activity;

    move-result-object v1

    .line 945
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/a/a/c/f$6;->a:Lcom/a/a/c/f;

    invoke-virtual {v2}, Lcom/a/a/c/f;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 947
    iget-object v0, p0, Lcom/a/a/c/f$6;->a:Lcom/a/a/c/f;

    iget-object v2, p1, Lio/fabric/sdk/android/services/e/t;->c:Lio/fabric/sdk/android/services/e/o;

    invoke-static {v0, v1, v2}, Lcom/a/a/c/f;->a(Lcom/a/a/c/f;Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;)Z

    move-result v0

    .line 950
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lio/fabric/sdk/android/services/e/t;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 938
    invoke-virtual {p0, p1}, Lcom/a/a/c/f$6;->a(Lio/fabric/sdk/android/services/e/t;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
