.class Lcom/facebook/share/internal/DeviceShareDialogFragment$2;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/DeviceShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->a:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/k;)V
    .locals 5

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/facebook/k;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->a:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-static {v1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V

    .line 209
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    new-instance v1, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-direct {v1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;-><init>()V

    .line 200
    :try_start_0
    const-string v2, "user_code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->a(Ljava/lang/String;)V

    .line 201
    const-string v2, "expires_in"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->a:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->a:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    new-instance v1, Lcom/facebook/FacebookRequestError;

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "Malformed server response"

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V

    goto :goto_0
.end method
