.class Lcom/localytics/android/ListenersSet$ListenersProxy;
.super Ljava/lang/Object;
.source "ListenersSet.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ListenersSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenersProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/ListenersSet;


# direct methods
.method private constructor <init>(Lcom/localytics/android/ListenersSet;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/localytics/android/ListenersSet$ListenersProxy;->this$0:Lcom/localytics/android/ListenersSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/ListenersSet;Lcom/localytics/android/ListenersSet$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/localytics/android/ListenersSet$ListenersProxy;-><init>(Lcom/localytics/android/ListenersSet;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/localytics/android/ListenersSet$ListenersProxy;->this$0:Lcom/localytics/android/ListenersSet;

    monitor-enter v1

    .line 82
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/localytics/android/ListenersSet$ListenersProxy;->this$0:Lcom/localytics/android/ListenersSet;

    # getter for: Lcom/localytics/android/ListenersSet;->mListenersSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/localytics/android/ListenersSet;->access$100(Lcom/localytics/android/ListenersSet;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 88
    :try_start_1
    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 91
    const-string v2, "%s method on listener threw exception"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
