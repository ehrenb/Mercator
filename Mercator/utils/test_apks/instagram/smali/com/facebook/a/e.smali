.class Lcom/facebook/a/e;
.super Ljava/lang/Object;
.source "AppEventQueue.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/facebook/a/d;

.field private static final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static d:Ljava/util/concurrent/ScheduledFuture;

.field private static final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/facebook/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/e;->a:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/facebook/a/d;

    invoke-direct {v0}, Lcom/facebook/a/d;-><init>()V

    sput-object v0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    new-instance v0, Lcom/facebook/a/e$1;

    invoke-direct {v0}, Lcom/facebook/a/e$1;-><init>()V

    sput-object v0, Lcom/facebook/a/e;->e:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/a/a;Lcom/facebook/a/l;ZLcom/facebook/a/j;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/facebook/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0, v5}, Lcom/facebook/c/k;->a(Ljava/lang/String;Z)Lcom/facebook/c/j;

    move-result-object v3

    .line 201
    const-string v2, "%s/activities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 203
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v1, v0, v1, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    :cond_0
    const-string v4, "access_token"

    invoke-virtual {p0}, Lcom/facebook/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/facebook/a/g;->d()Ljava/lang/String;

    move-result-object v4

    .line 214
    if-eqz v4, :cond_1

    .line 215
    const-string v5, "device_token"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_1
    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 220
    if-nez v3, :cond_2

    move-object v0, v1

    .line 248
    :goto_0
    return-object v0

    .line 226
    :cond_2
    invoke-static {}, Lcom/facebook/h;->f()Landroid/content/Context;

    move-result-object v0

    .line 227
    invoke-virtual {v3}, Lcom/facebook/c/j;->a()Z

    move-result v3

    .line 224
    invoke-virtual {p1, v2, v0, v3, p2}, Lcom/facebook/a/l;->a(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result v0

    .line 230
    if-nez v0, :cond_3

    move-object v0, v1

    .line 231
    goto :goto_0

    .line 234
    :cond_3
    iget v1, p3, Lcom/facebook/a/j;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/facebook/a/j;->a:I

    .line 236
    new-instance v0, Lcom/facebook/a/e$5;

    invoke-direct {v0, p0, v2, p1, p3}, Lcom/facebook/a/e$5;-><init>(Lcom/facebook/a/a;Lcom/facebook/GraphRequest;Lcom/facebook/a/l;Lcom/facebook/a/j;)V

    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$b;)V

    move-object v0, v2

    .line 248
    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/a/d;)Lcom/facebook/a/d;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    return-object p0
.end method

.method private static a(Lcom/facebook/a/h;Lcom/facebook/a/d;)Lcom/facebook/a/j;
    .locals 8

    .prologue
    .line 158
    new-instance v1, Lcom/facebook/a/j;

    invoke-direct {v1}, Lcom/facebook/a/j;-><init>()V

    .line 160
    invoke-static {}, Lcom/facebook/h;->f()Landroid/content/Context;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/facebook/h;->b(Landroid/content/Context;)Z

    move-result v2

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p1}, Lcom/facebook/a/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/a;

    .line 167
    invoke-virtual {p1, v0}, Lcom/facebook/a/d;->a(Lcom/facebook/a/a;)Lcom/facebook/a/l;

    move-result-object v5

    .line 165
    invoke-static {v0, v5, v2, v1}, Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/a/l;ZLcom/facebook/a/j;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 176
    sget-object v0, Lcom/facebook/n;->e:Lcom/facebook/n;

    sget-object v2, Lcom/facebook/a/e;->a:Ljava/lang/String;

    const-string v4, "Flushing %d events due to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/facebook/a/j;->a:I

    .line 177
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/facebook/a/h;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 176
    invoke-static {v0, v2, v4, v5}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 183
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/k;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 188
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/facebook/a/e;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/a/e$2;

    invoke-direct {v1}, Lcom/facebook/a/e$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/facebook/a/a;Lcom/facebook/GraphRequest;Lcom/facebook/k;Lcom/facebook/a/l;Lcom/facebook/a/j;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/a/e;->b(Lcom/facebook/a/a;Lcom/facebook/GraphRequest;Lcom/facebook/k;Lcom/facebook/a/l;Lcom/facebook/a/j;)V

    return-void
.end method

.method public static a(Lcom/facebook/a/a;Lcom/facebook/a/c;)V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/a/e$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/a/e$4;-><init>(Lcom/facebook/a/a;Lcom/facebook/a/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public static a(Lcom/facebook/a/h;)V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/a/e$3;

    invoke-direct {v1, p0}, Lcom/facebook/a/e$3;-><init>(Lcom/facebook/a/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    invoke-virtual {v0}, Lcom/facebook/a/d;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/a/a;Lcom/facebook/GraphRequest;Lcom/facebook/k;Lcom/facebook/a/l;Lcom/facebook/a/j;)V
    .locals 10

    .prologue
    .line 257
    invoke-virtual {p2}, Lcom/facebook/k;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    .line 258
    const-string v1, "Success"

    .line 260
    sget-object v0, Lcom/facebook/a/i;->a:Lcom/facebook/a/i;

    .line 262
    if-eqz v3, :cond_5

    .line 264
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 265
    const-string v1, "Failed: No Connectivity"

    .line 266
    sget-object v0, Lcom/facebook/a/i;->c:Lcom/facebook/a/i;

    move-object v2, v1

    move-object v1, v0

    .line 275
    :goto_0
    sget-object v0, Lcom/facebook/n;->e:Lcom/facebook/n;

    invoke-static {v0}, Lcom/facebook/h;->a(Lcom/facebook/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    :goto_1
    sget-object v4, Lcom/facebook/n;->e:Lcom/facebook/n;

    sget-object v5, Lcom/facebook/a/e;->a:Ljava/lang/String;

    const-string v6, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 288
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    aput-object v0, v7, v2

    .line 286
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_0
    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Lcom/facebook/a/l;->a(Z)V

    .line 295
    sget-object v0, Lcom/facebook/a/i;->c:Lcom/facebook/a/i;

    if-ne v1, v0, :cond_1

    .line 301
    invoke-static {}, Lcom/facebook/h;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/a/e$6;

    invoke-direct {v2, p0, p3}, Lcom/facebook/a/e$6;-><init>(Lcom/facebook/a/a;Lcom/facebook/a/l;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 309
    :cond_1
    sget-object v0, Lcom/facebook/a/i;->a:Lcom/facebook/a/i;

    if-eq v1, v0, :cond_2

    .line 311
    iget-object v0, p4, Lcom/facebook/a/j;->b:Lcom/facebook/a/i;

    sget-object v2, Lcom/facebook/a/i;->c:Lcom/facebook/a/i;

    if-eq v0, v2, :cond_2

    .line 312
    iput-object v1, p4, Lcom/facebook/a/j;->b:Lcom/facebook/a/i;

    .line 315
    :cond_2
    return-void

    .line 268
    :cond_3
    const-string v0, "Failed:\n  Response: %s\n  Error %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p2}, Lcom/facebook/k;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 270
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 268
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 271
    sget-object v0, Lcom/facebook/a/i;->b:Lcom/facebook/a/i;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string v0, "<Can\'t encode events for debug logging>"

    goto :goto_1

    .line 293
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method static b(Lcom/facebook/a/h;)V
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Lcom/facebook/a/f;->a()Lcom/facebook/a/k;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    invoke-virtual {v1, v0}, Lcom/facebook/a/d;->a(Lcom/facebook/a/k;)V

    .line 134
    :try_start_0
    sget-object v0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    invoke-static {p0, v0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/h;Lcom/facebook/a/d;)Lcom/facebook/a/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v3, v0, Lcom/facebook/a/j;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v0, v0, Lcom/facebook/a/j;->b:Lcom/facebook/a/i;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    invoke-static {}, Lcom/facebook/h;->f()Landroid/content/Context;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/support/v4/content/k;->a(Landroid/content/Context;)Landroid/support/v4/content/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/k;->a(Landroid/content/Intent;)Z

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    sget-object v1, Lcom/facebook/a/e;->a:Ljava/lang/String;

    const-string v2, "Caught unexpected exception while flushing app events: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c()Lcom/facebook/a/d;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/a/e;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/a/e;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
