.class Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "L2Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference",
        "<",
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcm/aptoide/pt/networkclient/okhttp/cache/ResponseCacheEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache$1;->this$0:Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
