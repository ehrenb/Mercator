.class public Lcom/seatgeek/sixpack/h;
.super Ljava/lang/Object;
.source "SixpackBuilder.java"


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private clientId:Ljava/lang/String;

.field private logLevel:Lcom/seatgeek/sixpack/a/b;

.field private logger:Lcom/seatgeek/sixpack/a/d;

.field private sixpackUrl:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/seatgeek/sixpack/g;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    .line 93
    iget-object v0, p0, Lcom/seatgeek/sixpack/h;->sixpackUrl:Lokhttp3/HttpUrl;

    if-nez v0, :cond_6

    .line 94
    sget-object v0, Lcom/seatgeek/sixpack/g;->DEFAULT_URL:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lcom/seatgeek/sixpack/h;->sixpackUrl:Lokhttp3/HttpUrl;

    move v0, v1

    .line 99
    :goto_0
    iget-object v3, p0, Lcom/seatgeek/sixpack/h;->clientId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/seatgeek/sixpack/h;->clientId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 100
    :cond_0
    invoke-static {}, Lcom/seatgeek/sixpack/g;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/seatgeek/sixpack/h;->clientId:Ljava/lang/String;

    move v2, v1

    .line 104
    :cond_1
    new-instance v1, Lcom/seatgeek/sixpack/g;

    iget-object v3, p0, Lcom/seatgeek/sixpack/h;->sixpackUrl:Lokhttp3/HttpUrl;

    iget-object v4, p0, Lcom/seatgeek/sixpack/h;->clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/seatgeek/sixpack/h;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v1, v3, v4, v5}, Lcom/seatgeek/sixpack/g;-><init>(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/OkHttpClient;)V

    .line 106
    iget-object v3, p0, Lcom/seatgeek/sixpack/h;->logLevel:Lcom/seatgeek/sixpack/a/b;

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/seatgeek/sixpack/h;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v1, v3}, Lcom/seatgeek/sixpack/g;->a(Lcom/seatgeek/sixpack/a/b;)V

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/seatgeek/sixpack/h;->logger:Lcom/seatgeek/sixpack/a/d;

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/seatgeek/sixpack/h;->logger:Lcom/seatgeek/sixpack/a/d;

    invoke-virtual {v1, v3}, Lcom/seatgeek/sixpack/g;->a(Lcom/seatgeek/sixpack/a/d;)V

    .line 114
    :cond_3
    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {v1}, Lcom/seatgeek/sixpack/g;->d()V

    .line 118
    :cond_4
    if-eqz v2, :cond_5

    .line 119
    iget-object v0, p0, Lcom/seatgeek/sixpack/h;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/seatgeek/sixpack/g;->b(Ljava/lang/String;)V

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/seatgeek/sixpack/h;->sixpackUrl:Lokhttp3/HttpUrl;

    iget-object v2, p0, Lcom/seatgeek/sixpack/h;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/seatgeek/sixpack/g;->a(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    .line 124
    return-object v1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public a(Lcom/seatgeek/sixpack/a/b;)Lcom/seatgeek/sixpack/h;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/seatgeek/sixpack/h;->logLevel:Lcom/seatgeek/sixpack/a/b;

    .line 73
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/seatgeek/sixpack/h;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/seatgeek/sixpack/h;->clientId:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public a(Lokhttp3/HttpUrl;)Lcom/seatgeek/sixpack/h;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/seatgeek/sixpack/h;->sixpackUrl:Lokhttp3/HttpUrl;

    .line 37
    return-object p0
.end method

.method public a(Lokhttp3/OkHttpClient;)Lcom/seatgeek/sixpack/h;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/seatgeek/sixpack/h;->client:Lokhttp3/OkHttpClient;

    .line 84
    return-object p0
.end method
