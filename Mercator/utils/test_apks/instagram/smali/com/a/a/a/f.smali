.class Lcom/a/a/a/f;
.super Ljava/lang/Object;
.source "AnswersFilesManagerProvider.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lio/fabric/sdk/android/services/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/a/a/a/f;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/a/a/a/f;->b:Lio/fabric/sdk/android/services/d/a;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/a/s;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnswersFilesManagerProvider cannot be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lcom/a/a/a/y;

    invoke-direct {v0}, Lcom/a/a/a/y;-><init>()V

    .line 42
    new-instance v1, Lio/fabric/sdk/android/services/b/s;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/b/s;-><init>()V

    .line 43
    iget-object v2, p0, Lcom/a/a/a/f;->b:Lio/fabric/sdk/android/services/d/a;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/d/a;->a()Ljava/io/File;

    move-result-object v2

    .line 44
    new-instance v3, Lio/fabric/sdk/android/services/c/g;

    iget-object v4, p0, Lcom/a/a/a/f;->a:Landroid/content/Context;

    const-string v5, "session_analytics.tap"

    const-string v6, "session_analytics_to_send"

    invoke-direct {v3, v4, v2, v5, v6}, Lio/fabric/sdk/android/services/c/g;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v2, Lcom/a/a/a/s;

    iget-object v4, p0, Lcom/a/a/a/f;->a:Landroid/content/Context;

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/a/a/a/s;-><init>(Landroid/content/Context;Lcom/a/a/a/y;Lio/fabric/sdk/android/services/b/k;Lio/fabric/sdk/android/services/c/c;)V

    return-object v2
.end method
