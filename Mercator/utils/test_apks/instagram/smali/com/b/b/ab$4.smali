.class final Lcom/b/b/ab$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/ab;->a(Lcom/b/b/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/z;

.field final synthetic b:Lcom/b/b/ab;


# direct methods
.method constructor <init>(Lcom/b/b/ab;Lcom/b/b/z;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/b/b/ab$4;->b:Lcom/b/b/ab;

    iput-object p2, p0, Lcom/b/b/ab$4;->a:Lcom/b/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 218
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PulseCallbackReportInfo HTTP Response Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/ab$4;->a:Lcom/b/b/z;

    iget v2, v2, Lcom/b/b/z;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/b/ab$4;->a:Lcom/b/b/z;

    .line 2080
    iget-object v2, v2, Lcom/b/b/z;->l:Lcom/b/b/y;

    .line 3038
    iget-object v2, v2, Lcom/b/b/ce;->r:Ljava/lang/String;

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 218
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    return-void
.end method
