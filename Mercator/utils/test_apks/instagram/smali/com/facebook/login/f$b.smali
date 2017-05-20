.class Lcom/facebook/login/f$b;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/login/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/facebook/c/m;


# direct methods
.method constructor <init>(Lcom/facebook/c/m;)V
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lcom/facebook/c/ac;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iput-object p1, p0, Lcom/facebook/login/f$b;->a:Lcom/facebook/c/m;

    .line 607
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/facebook/login/f$b;->a:Lcom/facebook/c/m;

    invoke-virtual {v0}, Lcom/facebook/c/m;->c()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/facebook/login/f$b;->a:Lcom/facebook/c/m;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/c/m;->a(Landroid/content/Intent;I)V

    .line 612
    return-void
.end method
