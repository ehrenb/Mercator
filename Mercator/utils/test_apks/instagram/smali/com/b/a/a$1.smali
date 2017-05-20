.class final Lcom/b/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/bp",
        "<",
        "Lcom/b/b/cs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/bo;)V
    .locals 2

    .prologue
    .line 46
    check-cast p1, Lcom/b/b/cs;

    .line 1049
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/a/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/b/a/a$1$1;-><init>(Lcom/b/a/a$1;Lcom/b/b/cs;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->a(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
