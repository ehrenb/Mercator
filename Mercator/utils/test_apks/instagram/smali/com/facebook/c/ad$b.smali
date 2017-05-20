.class Lcom/facebook/c/ad$b;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/c/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c/ad;


# direct methods
.method private constructor <init>(Lcom/facebook/c/ad;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/c/ad;Lcom/facebook/c/ad$1;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/facebook/c/ad$b;-><init>(Lcom/facebook/c/ad;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 568
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-static {v0}, Lcom/facebook/c/ad;->b(Lcom/facebook/c/ad;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-static {v0}, Lcom/facebook/c/ad;->c(Lcom/facebook/c/ad;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-static {v0}, Lcom/facebook/c/ad;->d(Lcom/facebook/c/ad;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 577
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-static {v0}, Lcom/facebook/c/ad;->e(Lcom/facebook/c/ad;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-static {v0}, Lcom/facebook/c/ad;->f(Lcom/facebook/c/ad;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/c/ad;->a(Lcom/facebook/c/ad;Z)Z

    .line 580
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 559
    const-string v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/c/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 561
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-static {v0}, Lcom/facebook/c/ad;->b(Lcom/facebook/c/ad;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-static {v0}, Lcom/facebook/c/ad;->c(Lcom/facebook/c/ad;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 564
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/c/ad;->a(Ljava/lang/Throwable;)V

    .line 543
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 550
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 552
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 553
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/c/ad;->a(Ljava/lang/Throwable;)V

    .line 555
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 483
    const-string v1, "FacebookSDK.WebDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirect URL: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/c/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-static {v1}, Lcom/facebook/c/ad;->a(Lcom/facebook/c/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 485
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-virtual {v0, p2}, Lcom/facebook/c/ad;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 487
    const-string v0, "error"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    if-nez v0, :cond_0

    .line 489
    const-string v0, "error_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    :cond_0
    const-string v1, "error_msg"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    if-nez v1, :cond_1

    .line 494
    const-string v1, "error_message"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    :cond_1
    if-nez v1, :cond_2

    .line 497
    const-string v1, "error_description"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    :cond_2
    const-string v2, "error_code"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-static {v2}, Lcom/facebook/c/ab;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 503
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 509
    :goto_0
    invoke-static {v0}, Lcom/facebook/c/ab;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 510
    invoke-static {v1}, Lcom/facebook/c/ab;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v2, v3, :cond_4

    .line 511
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-virtual {v0, v5}, Lcom/facebook/c/ad;->a(Landroid/os/Bundle;)V

    :goto_1
    move v0, v4

    .line 534
    :cond_3
    :goto_2
    return v0

    .line 504
    :catch_0
    move-exception v2

    move v2, v3

    .line 505
    goto :goto_0

    .line 512
    :cond_4
    if-eqz v0, :cond_6

    const-string v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "OAuthAccessDeniedException"

    .line 513
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 514
    :cond_5
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-virtual {v0}, Lcom/facebook/c/ad;->cancel()V

    goto :goto_1

    .line 515
    :cond_6
    const/16 v3, 0x1069

    if-ne v2, v3, :cond_7

    .line 516
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-virtual {v0}, Lcom/facebook/c/ad;->cancel()V

    goto :goto_1

    .line 518
    :cond_7
    new-instance v3, Lcom/facebook/FacebookRequestError;

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    new-instance v2, Lcom/facebook/FacebookServiceException;

    invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/facebook/c/ad;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 522
    :cond_8
    const-string v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 523
    iget-object v0, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-virtual {v0}, Lcom/facebook/c/ad;->cancel()V

    move v0, v4

    .line 524
    goto :goto_2

    .line 525
    :cond_9
    const-string v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 530
    :try_start_1
    iget-object v1, p0, Lcom/facebook/c/ad$b;->a:Lcom/facebook/c/ad;

    invoke-virtual {v1}, Lcom/facebook/c/ad;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 531
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 530
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    .line 532
    goto :goto_2

    .line 533
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_0
.end method
