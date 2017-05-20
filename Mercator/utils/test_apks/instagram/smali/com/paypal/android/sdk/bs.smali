.class final Lcom/paypal/android/sdk/bs;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private final a:Lcom/paypal/android/sdk/by;

.field private synthetic b:Lcom/paypal/android/sdk/bo;


# direct methods
.method private constructor <init>(Lcom/paypal/android/sdk/bo;Lcom/paypal/android/sdk/by;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/bs;->b:Lcom/paypal/android/sdk/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    return-void
.end method

.method synthetic constructor <init>(Lcom/paypal/android/sdk/bo;Lcom/paypal/android/sdk/by;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/paypal/android/sdk/bs;-><init>(Lcom/paypal/android/sdk/bo;Lcom/paypal/android/sdk/by;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/by;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PayPal Debug-ID: %s [%s, %s]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/paypal/android/sdk/bs;->b:Lcom/paypal/android/sdk/bo;

    invoke-static {v4}, Lcom/paypal/android/sdk/bo;->d(Lcom/paypal/android/sdk/bo;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/paypal/android/sdk/bs;->b:Lcom/paypal/android/sdk/bo;

    invoke-static {v5}, Lcom/paypal/android/sdk/bo;->e(Lcom/paypal/android/sdk/bo;)Lcom/paypal/android/sdk/ab;

    move-result-object v5

    invoke-interface {v5}, Lcom/paypal/android/sdk/ab;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/bs;->b:Lcom/paypal/android/sdk/bo;

    invoke-static {v5}, Lcom/paypal/android/sdk/bo;->e(Lcom/paypal/android/sdk/bo;)Lcom/paypal/android/sdk/ab;

    const-string v5, "release"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/by;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "PayPal-Debug-Id"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "paypal.sdk"

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/bs;->b:Lcom/paypal/android/sdk/bo;

    iget-object v1, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/paypal/android/sdk/bo;->a(Lcom/paypal/android/sdk/bo;Lcom/paypal/android/sdk/by;Lokhttp3/Response;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "exception in response handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    :try_start_0
    const-string v0, "paypal-debug-id"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/by;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "paypal.sdk"

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/bs;->b:Lcom/paypal/android/sdk/bo;

    iget-object v1, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/paypal/android/sdk/bo;->a(Lcom/paypal/android/sdk/bo;Lcom/paypal/android/sdk/by;Lokhttp3/Response;Ljava/io/IOException;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/by;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/sdk/bo;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/by;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " success. response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/by;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "paypal.sdk"

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    invoke-static {v0}, Lcom/paypal/android/sdk/bo;->a(Lcom/paypal/android/sdk/by;)V

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/sdk/bs;->b:Lcom/paypal/android/sdk/bo;

    invoke-static {v0}, Lcom/paypal/android/sdk/bo;->c(Lcom/paypal/android/sdk/bo;)Lcom/paypal/android/sdk/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bs;->a:Lcom/paypal/android/sdk/by;

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/bz;->a(Lcom/paypal/android/sdk/by;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "exception in response handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
