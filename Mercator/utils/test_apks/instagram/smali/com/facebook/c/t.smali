.class public Lcom/facebook/c/t;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/n;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/StringBuilder;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/c/t;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/n;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/c/t;->e:I

    .line 105
    const-string v0, "tag"

    invoke-static {p2, v0}, Lcom/facebook/c/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/facebook/c/t;->b:Lcom/facebook/n;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookSDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/t;->c:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/c/t;->d:Ljava/lang/StringBuilder;

    .line 110
    return-void
.end method

.method public static a(Lcom/facebook/n;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 82
    invoke-static {p0}, Lcom/facebook/h;->a(Lcom/facebook/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {p3}, Lcom/facebook/c/t;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "FacebookSDK."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FacebookSDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/facebook/n;->f:Lcom/facebook/n;

    if-ne p0, v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :cond_1
    return-void
.end method

.method public static varargs a(Lcom/facebook/n;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/facebook/h;->a(Lcom/facebook/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/c/t;->a(Lcom/facebook/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/c/t;->a(Lcom/facebook/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static varargs a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {p0}, Lcom/facebook/h;->a(Lcom/facebook/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const/4 v1, 0x3

    invoke-static {p0, v1, p1, v0}, Lcom/facebook/c/t;->a(Lcom/facebook/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/facebook/c/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/n;->b:Lcom/facebook/n;

    invoke-static {v0}, Lcom/facebook/h;->a(Lcom/facebook/n;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "ACCESS_TOKEN_REMOVED"

    invoke-static {p0, v0}, Lcom/facebook/c/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit v1

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/facebook/c/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/c/t;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v1

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/c/t;->b:Lcom/facebook/n;

    invoke-static {v0}, Lcom/facebook/h;->a(Lcom/facebook/n;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    const-class v2, Lcom/facebook/c/t;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/facebook/c/t;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v2

    return-object p0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/c/t;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/c/t;->b(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/c/t;->d:Ljava/lang/StringBuilder;

    .line 131
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 157
    const-string v0, "  %s:\t%s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/c/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/facebook/c/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/c/t;->d:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/c/t;->b:Lcom/facebook/n;

    iget v1, p0, Lcom/facebook/c/t;->e:I

    iget-object v2, p0, Lcom/facebook/c/t;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/c/t;->a(Lcom/facebook/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/facebook/c/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/facebook/c/t;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    return-void
.end method
