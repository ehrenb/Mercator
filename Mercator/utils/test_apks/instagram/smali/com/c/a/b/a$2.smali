.class Lcom/c/a/b/a$2;
.super Lrx/a/a;
.source "MenuItemClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/b/a;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/b/a;


# direct methods
.method constructor <init>(Lcom/c/a/b/a;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/c/a/b/a$2;->a:Lcom/c/a/b/a;

    invoke-direct {p0}, Lrx/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/c/a/b/a$2;->a:Lcom/c/a/b/a;

    iget-object v0, v0, Lcom/c/a/b/a;->a:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 38
    return-void
.end method
