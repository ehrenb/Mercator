.class final Lcom/b/b/cc$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cc;


# direct methods
.method constructor <init>(Lcom/b/b/cc;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/b/b/cc$1;->a:Lcom/b/b/cc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/b/b/cc$1;->a:Lcom/b/b/cc;

    invoke-static {v0}, Lcom/b/b/cc;->a(Lcom/b/b/cc;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/b/b/cc$1;->a:Lcom/b/b/cc;

    invoke-static {v0}, Lcom/b/b/cc;->a(Lcom/b/b/cc;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
