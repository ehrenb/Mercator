.class Lcom/facebook/login/DeviceAuthDialog$5;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->c()Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/k;)V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->c(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/k;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 344
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/k;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->f()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 337
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->d(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_0

    .line 341
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_0

    .line 352
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x149620 -> :sswitch_1
        0x149634 -> :sswitch_0
        0x149635 -> :sswitch_1
        0x149636 -> :sswitch_0
    .end sparse-switch
.end method
