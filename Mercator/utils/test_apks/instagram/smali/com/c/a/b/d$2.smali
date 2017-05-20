.class Lcom/c/a/b/d$2;
.super Lrx/a/a;
.source "ViewClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/b/d;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/b/d;


# direct methods
.method constructor <init>(Lcom/c/a/b/d;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/c/a/b/d$2;->a:Lcom/c/a/b/d;

    invoke-direct {p0}, Lrx/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/c/a/b/d$2;->a:Lcom/c/a/b/d;

    iget-object v0, v0, Lcom/c/a/b/d;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
