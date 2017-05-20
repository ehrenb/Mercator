.class public Lcm/aptoide/pt/utils/AptoideUtils;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/utils/AptoideUtils$NetworkUtils;,
        Lcm/aptoide/pt/utils/AptoideUtils$LocaleU;,
        Lcm/aptoide/pt/utils/AptoideUtils$SocialLinksU;,
        Lcm/aptoide/pt/utils/AptoideUtils$ObservableU;,
        Lcm/aptoide/pt/utils/AptoideUtils$Benchmarking;,
        Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;,
        Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;,
        Lcm/aptoide/pt/utils/AptoideUtils$ResourseU;,
        Lcm/aptoide/pt/utils/AptoideUtils$HtmlU;,
        Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;,
        Lcm/aptoide/pt/utils/AptoideUtils$SystemU;,
        Lcm/aptoide/pt/utils/AptoideUtils$StringU;,
        Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;,
        Lcm/aptoide/pt/utils/AptoideUtils$RegexU;,
        Lcm/aptoide/pt/utils/AptoideUtils$MathU;,
        Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;,
        Lcm/aptoide/pt/utils/AptoideUtils$Core;
    }
.end annotation


# static fields
.field private static context:Landroid/content/Context;

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Random;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils;->random:Ljava/util/Random;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    sput-object p0, Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;

    return-void
.end method
