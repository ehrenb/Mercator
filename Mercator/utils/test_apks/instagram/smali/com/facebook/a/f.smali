.class Lcom/facebook/a/f;
.super Ljava/lang/Object;
.source "AppEventStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/a/k;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 77
    const-class v3, Lcom/facebook/a/f;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/facebook/a/a/b;->a()V

    .line 81
    invoke-static {}, Lcom/facebook/h;->f()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 83
    :try_start_1
    const-string v0, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/facebook/a/f$a;

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Lcom/facebook/a/f$a;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    invoke-virtual {v1}, Lcom/facebook/a/f$a;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/k;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    :try_start_3
    invoke-static {v1}, Lcom/facebook/c/ab;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :try_start_4
    const-string v1, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :goto_0
    if-nez v0, :cond_0

    .line 108
    :try_start_5
    new-instance v0, Lcom/facebook/a/k;

    invoke-direct {v0}, Lcom/facebook/a/k;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    :cond_0
    monitor-exit v3

    return-object v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    :try_start_6
    sget-object v2, Lcom/facebook/a/f;->a:Ljava/lang/String;

    const-string v4, "Got unexpected exception when removing events file: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 87
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 92
    :goto_1
    :try_start_7
    invoke-static {v0}, Lcom/facebook/c/ab;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 101
    :try_start_8
    const-string v0, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v2

    .line 104
    goto :goto_0

    .line 102
    :catch_2
    move-exception v0

    .line 103
    :try_start_9
    sget-object v1, Lcom/facebook/a/f;->a:Ljava/lang/String;

    const-string v4, "Got unexpected exception when removing events file: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, v2

    .line 105
    goto :goto_0

    .line 89
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 90
    :goto_2
    :try_start_a
    sget-object v5, Lcom/facebook/a/f;->a:Ljava/lang/String;

    const-string v6, "Got unexpected exception while reading events: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 92
    :try_start_b
    invoke-static {v1}, Lcom/facebook/c/ab;->a(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 101
    :try_start_c
    const-string v0, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v0, v2

    .line 104
    goto :goto_0

    .line 102
    :catch_4
    move-exception v0

    .line 103
    :try_start_d
    sget-object v1, Lcom/facebook/a/f;->a:Ljava/lang/String;

    const-string v4, "Got unexpected exception when removing events file: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 105
    goto :goto_0

    .line 92
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/facebook/c/ab;->a(Ljava/io/Closeable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 101
    :try_start_e
    const-string v1, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 104
    :goto_4
    :try_start_f
    throw v0

    .line 102
    :catch_5
    move-exception v1

    .line 103
    sget-object v2, Lcom/facebook/a/f;->a:Ljava/lang/String;

    const-string v4, "Got unexpected exception when removing events file: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4

    .line 92
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 89
    :catch_6
    move-exception v0

    goto :goto_2

    .line 87
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized a(Lcom/facebook/a/a;Lcom/facebook/a/l;)V
    .locals 4

    .prologue
    .line 46
    const-class v1, Lcom/facebook/a/f;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/a/a/b;->a()V

    .line 47
    invoke-static {}, Lcom/facebook/a/f;->a()Lcom/facebook/a/k;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p0}, Lcom/facebook/a/k;->b(Lcom/facebook/a/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v0, p0}, Lcom/facebook/a/k;->a(Lcom/facebook/a/a;)Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lcom/facebook/a/l;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :goto_0
    invoke-static {v0}, Lcom/facebook/a/f;->a(Lcom/facebook/a/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v1

    return-void

    .line 54
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/a/l;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/facebook/a/k;->a(Lcom/facebook/a/a;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/facebook/a/d;)V
    .locals 5

    .prologue
    .line 62
    const-class v1, Lcom/facebook/a/f;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/a/a/b;->a()V

    .line 63
    invoke-static {}, Lcom/facebook/a/f;->a()Lcom/facebook/a/k;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/facebook/a/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/a;

    .line 65
    invoke-virtual {p0, v0}, Lcom/facebook/a/d;->a(Lcom/facebook/a/a;)Lcom/facebook/a/l;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lcom/facebook/a/l;->b()Ljava/util/List;

    move-result-object v4

    .line 67
    invoke-virtual {v2, v0, v4}, Lcom/facebook/a/k;->a(Lcom/facebook/a/a;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 72
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/facebook/a/f;->a(Lcom/facebook/a/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit v1

    return-void
.end method

.method private static a(Lcom/facebook/a/k;)V
    .locals 6

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-static {}, Lcom/facebook/h;->f()Landroid/content/Context;

    move-result-object v3

    .line 120
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const-string v4, "AppEventsLogger.persistedevents"

    const/4 v5, 0x0

    .line 122
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    invoke-static {v1}, Lcom/facebook/c/ab;->a(Ljava/io/Closeable;)V

    .line 134
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 125
    :goto_1
    :try_start_2
    sget-object v2, Lcom/facebook/a/f;->a:Ljava/lang/String;

    const-string v4, "Got unexpected exception while persisting events: "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :try_start_3
    const-string v0, "AppEventsLogger.persistedevents"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    :goto_2
    invoke-static {v1}, Lcom/facebook/c/ab;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/facebook/c/ab;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 128
    :catch_1
    move-exception v0

    goto :goto_2

    .line 124
    :catch_2
    move-exception v0

    goto :goto_1
.end method
