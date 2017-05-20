.class public Lcom/facebook/c/ad$a;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/c/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/facebook/c/ad$c;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/facebook/AccessToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/ad$a;->g:Lcom/facebook/AccessToken;

    .line 603
    iget-object v0, p0, Lcom/facebook/c/ad$a;->g:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    .line 604
    invoke-static {p1}, Lcom/facebook/c/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_1

    .line 606
    iput-object v0, p0, Lcom/facebook/c/ad$a;->b:Ljava/lang/String;

    .line 613
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/c/ad$a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 614
    return-void

    .line 608
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    if-nez p2, :cond_0

    .line 627
    invoke-static {p1}, Lcom/facebook/c/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 629
    :cond_0
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/c/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iput-object p2, p0, Lcom/facebook/c/ad$a;->b:Ljava/lang/String;

    .line 632
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/c/ad$a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 633
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 699
    iput-object p1, p0, Lcom/facebook/c/ad$a;->a:Landroid/content/Context;

    .line 700
    iput-object p2, p0, Lcom/facebook/c/ad$a;->c:Ljava/lang/String;

    .line 701
    if-eqz p3, :cond_0

    .line 702
    iput-object p3, p0, Lcom/facebook/c/ad$a;->f:Landroid/os/Bundle;

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/c/ad$a;->f:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/c/ad$c;)Lcom/facebook/c/ad$a;
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/facebook/c/ad$a;->e:Lcom/facebook/c/ad$c;

    .line 654
    return-object p0
.end method

.method public a()Lcom/facebook/c/ad;
    .locals 6

    .prologue
    .line 664
    iget-object v0, p0, Lcom/facebook/c/ad$a;->g:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/facebook/c/ad$a;->f:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/c/ad$a;->g:Lcom/facebook/AccessToken;

    .line 667
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/facebook/c/ad$a;->f:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/c/ad$a;->g:Lcom/facebook/AccessToken;

    .line 670
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :goto_0
    new-instance v0, Lcom/facebook/c/ad;

    iget-object v1, p0, Lcom/facebook/c/ad$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/c/ad$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/c/ad$a;->f:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/c/ad$a;->d:I

    iget-object v5, p0, Lcom/facebook/c/ad$a;->e:Lcom/facebook/c/ad$c;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/c/ad;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/c/ad$c;)V

    return-object v0

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/facebook/c/ad$a;->f:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/c/ad$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/facebook/c/ad$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/facebook/c/ad$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/facebook/c/ad$a;->d:I

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/facebook/c/ad$a;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public f()Lcom/facebook/c/ad$c;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/facebook/c/ad$a;->e:Lcom/facebook/c/ad$c;

    return-object v0
.end method
