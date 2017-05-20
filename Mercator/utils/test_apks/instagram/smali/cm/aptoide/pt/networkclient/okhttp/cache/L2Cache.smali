.class public Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;
.super Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;
.source "L2Cache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache",
        "<",
        "Lokhttp3/Request;",
        "Lokhttp3/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_CONTROL_HEADER:Ljava/lang/String; = "Cache-Control"

.field private static final CACHE_FILE_NAME:Ljava/lang/String; = "aptoide.wscache"

.field private static final MAX_COUNT:I = 0xf

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isPersisting:Z

.field private final pattern:Ljava/util/regex/Pattern;

.field private persistenceCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm",
            "<",
            "Lokhttp3/Request;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;-><init>(Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;)V

    .line 44
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->pattern:Ljava/util/regex/Pattern;

    .line 45
    iput-boolean v1, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->isPersisting:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->persistenceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->load()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private extractNumber(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aptoide.wscache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    new-instance v2, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache$1;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache$1;-><init>(Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;)V

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    sget-object v0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->TAG:Ljava/lang/String;

    const-string v1, "Loaded cache file"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private persist()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->isPersisting:Z

    .line 88
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->removeInvalid()V

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->store()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->persistenceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->persistenceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-boolean v2, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->isPersisting:Z

    .line 103
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removeInvalid()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;

    invoke-virtual {v1}, Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method private shouldCacheUntil(Lokhttp3/Response;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 136
    sget-object v0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->TAG:Ljava/lang/String;

    const-string v2, "not caching the response due to empty headers"

    invoke-static {v0, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 156
    :goto_0
    return v0

    .line 140
    :cond_0
    const-string v2, "Cache-Control"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 142
    sget-object v0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->TAG:Ljava/lang/String;

    const-string v2, "not caching the response due to empty Cache-Control header"

    invoke-static {v0, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 143
    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    const-string v3, "max-age"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "s-maxage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    :cond_3
    invoke-direct {p0, v0}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->extractNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    :cond_4
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method private store()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aptoide.wscache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iget-object v2, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->TAG:Ljava/lang/String;

    const-string v1, "Stored cache file"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 199
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->persist()V

    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 82
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p2, Lokhttp3/Request;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->get(Ljava/lang/String;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lokhttp3/Request;)Lokhttp3/Response;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;

    .line 171
    iget-object v1, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->persistenceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->isPersisting:Z

    if-nez v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->persist()V

    .line 174
    :cond_0
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;->getResponse(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;

    .line 183
    :goto_0
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;->isValid()Z

    move-result v0

    .line 186
    :goto_1
    return v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lokhttp3/Response;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->put(Ljava/lang/String;Lokhttp3/Response;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0, p2}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->shouldCacheUntil(Lokhttp3/Response;)I

    move-result v0

    .line 127
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;

    invoke-direct {v2, p2, v0}, Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;-><init>(Lokhttp3/Response;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    return-void
.end method
