.class Lcom/facebook/login/DeviceAuthDialog$8;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$8;->b:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/k;)V
    .locals 5

    .prologue
    .line 410
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$8;->b:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->c(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/k;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$8;->b:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/k;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->f()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 423
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 424
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-static {v0}, Lcom/facebook/c/ab;->a(Lorg/json/JSONObject;)Lcom/facebook/c/ab$b;

    move-result-object v2

    .line 426
    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 431
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$8;->b:Lcom/facebook/login/DeviceAuthDialog;

    .line 432
    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->g(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a()Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-static {v3}, Lcom/facebook/b/a/a;->b(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/facebook/h;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/c/k;->a(Ljava/lang/String;)Lcom/facebook/c/j;

    move-result-object v3

    .line 437
    invoke-virtual {v3}, Lcom/facebook/c/j;->g()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lcom/facebook/c/z;->c:Lcom/facebook/c/z;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 438
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$8;->b:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->h(Lcom/facebook/login/DeviceAuthDialog;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 439
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$8;->b:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->b(Lcom/facebook/login/DeviceAuthDialog;Z)Z

    .line 440
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$8;->b:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v4, p0, Lcom/facebook/login/DeviceAuthDialog$8;->a:Ljava/lang/String;

    invoke-static {v3, v1, v2, v4, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/c/ab$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$8;->b:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$8;->b:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$8;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/c/ab$b;Ljava/lang/String;)V

    goto :goto_0
.end method
