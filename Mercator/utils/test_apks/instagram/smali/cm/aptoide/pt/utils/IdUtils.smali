.class public final Lcm/aptoide/pt/utils/IdUtils;
.super Ljava/lang/Object;
.source "IdUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final random:Ljava/security/SecureRandom;

.field private static final sequentialLongId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final longId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcm/aptoide/pt/utils/IdUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/IdUtils;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcm/aptoide/pt/utils/IdUtils;->random:Ljava/security/SecureRandom;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcm/aptoide/pt/utils/IdUtils;->sequentialLongId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcm/aptoide/pt/utils/IdUtils;->longId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    return-void
.end method

.method public static nextSequentialLong()J
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcm/aptoide/pt/utils/IdUtils;->sequentialLongId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public static randomLong()J
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcm/aptoide/pt/utils/IdUtils;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static randomString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 34
    sget-object v1, Lcm/aptoide/pt/utils/IdUtils;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 35
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public nextLong()J
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/utils/IdUtils;->longId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method
