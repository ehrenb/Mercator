.class Lcom/a/a/c/u;
.super Ljava/lang/Object;
.source "MetaDataStore.java"


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/a/a/c/u;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/a/a/c/u;->b:Ljava/io/File;

    .line 58
    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/c/u;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/c/u;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "keys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Lcom/a/a/c/ai;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    const-string v1, "userId"

    invoke-static {v0, v1}, Lcom/a/a/c/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "userName"

    invoke-static {v0, v2}, Lcom/a/a/c/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v3, "userEmail"

    invoke-static {v0, v3}, Lcom/a/a/c/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v3, Lcom/a/a/c/ai;

    invoke-direct {v3, v1, v2, v0}, Lcom/a/a/c/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static f(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 158
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-static {v1, v0}, Lcom/a/a/c/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/a/a/c/ai;
    .locals 5

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/a/a/c/u;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    sget-object v0, Lcom/a/a/c/ai;->a:Lcom/a/a/c/ai;

    .line 92
    :goto_0
    return-object v0

    .line 83
    :cond_0
    const/4 v2, 0x0

    .line 85
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    invoke-static {v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c/u;->e(Ljava/lang/String;)Lcom/a/a/c/ai;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 90
    const-string v2, "Failed to close user metadata file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 88
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Error deserializing user metadata."

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    const-string v0, "Failed to close user metadata file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/a/a/c/ai;->a:Lcom/a/a/c/ai;

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close user metadata file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 87
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/a/a/c/u;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 97
    const/4 v2, 0x0

    .line 99
    :try_start_0
    invoke-static {p2}, Lcom/a/a/c/u;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 100
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Lcom/a/a/c/u;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    const-string v0, "Failed to close key/value metadata file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 106
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Error serializing key/value metadata."

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    const-string v0, "Failed to close key/value metadata file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    const-string v1, "Failed to close key/value metadata file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 105
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/a/a/c/u;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const/4 v2, 0x0

    .line 120
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    invoke-static {v1}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c/u;->f(Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 125
    const-string v2, "Failed to close user metadata file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 123
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Error deserializing user metadata."

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    const-string v0, "Failed to close user metadata file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close user metadata file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    goto :goto_1
.end method
