.class public La/a/a/a$a;
.super Ljava/lang/Object;
.source "OkHttp3Connection.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Lokhttp3/OkHttpClient$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, La/a/a/a$a;->b:Lokhttp3/OkHttpClient$Builder;

    .line 127
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, La/a/a/a$a;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 147
    const-class v1, La/a/a/a$a;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, La/a/a/a$a;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, La/a/a/a$a;->b:Lokhttp3/OkHttpClient$Builder;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a$a;->b:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    :goto_0
    iput-object v0, p0, La/a/a/a$a;->a:Lokhttp3/OkHttpClient;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a$a;->b:Lokhttp3/OkHttpClient$Builder;

    .line 152
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    new-instance v0, La/a/a/a;

    iget-object v1, p0, La/a/a/a$a;->a:Lokhttp3/OkHttpClient;

    invoke-direct {v0, p1, v1}, La/a/a/a;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;)V

    return-object v0

    .line 149
    :cond_2
    :try_start_1
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
