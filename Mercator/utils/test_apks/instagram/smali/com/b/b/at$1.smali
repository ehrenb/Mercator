.class final Lcom/b/b/at$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/at;
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


# instance fields
.field final synthetic a:Lcom/b/b/at;


# direct methods
.method constructor <init>(Lcom/b/b/at;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/b/b/at$1;->a:Lcom/b/b/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/bo;)V
    .locals 2

    .prologue
    .line 70
    check-cast p1, Lcom/b/b/cs;

    .line 1073
    sget-object v0, Lcom/b/b/at$4;->a:[I

    iget v1, p1, Lcom/b/b/cs;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 1076
    :pswitch_0
    iget-object v0, p0, Lcom/b/b/at$1;->a:Lcom/b/b/at;

    invoke-virtual {v0}, Lcom/b/b/at;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/at$1$1;

    invoke-direct {v1, p0}, Lcom/b/b/at$1$1;-><init>(Lcom/b/b/at$1;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
