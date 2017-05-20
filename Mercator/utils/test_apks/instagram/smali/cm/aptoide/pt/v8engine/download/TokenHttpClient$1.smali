.class Lcm/aptoide/pt/v8engine/download/TokenHttpClient$1;
.super Ljava/lang/Object;
.source "TokenHttpClient.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->customMake()Lokhttp3/OkHttpClient$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/download/TokenHttpClient;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/download/TokenHttpClient;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$1;->this$0:Lcm/aptoide/pt/v8engine/download/TokenHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 71
    const-string v1, "versioncode"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v2, "package"

    invoke-virtual {v0, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string v3, "fileType"

    invoke-virtual {v0, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 75
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v4, "versioncode"

    .line 76
    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v4, "package"

    .line 77
    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v4, "fileType"

    .line 78
    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 75
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    .line 82
    if-eqz v4, :cond_0

    .line 83
    const-string v5, "X-Mirror"

    invoke-virtual {v4, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    iget-object v5, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$1;->this$0:Lcm/aptoide/pt/v8engine/download/TokenHttpClient;

    # invokes: Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->addMirrorToDownloadEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v5, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->access$000(Lcm/aptoide/pt/v8engine/download/TokenHttpClient;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    :cond_0
    return-object v0
.end method
