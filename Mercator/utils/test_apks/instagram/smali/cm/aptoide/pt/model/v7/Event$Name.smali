.class public final enum Lcm/aptoide/pt/model/v7/Event$Name;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/model/v7/Event$Name;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum facebook:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum getAds:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum getMyStoresSubscribed:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum getReviews:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum getStore:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum getStoreWidgets:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum getStoresRecommended:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum getUserTimeline:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum listApps:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum listComments:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum listReviews:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum listStores:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum myDownloads:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum myExcludedUpdates:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum myRollbacks:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum myScheduledDownloads:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum myStores:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum myUpdates:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum twitch:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum twitter:Lcm/aptoide/pt/model/v7/Event$Name;

.field public static final enum youtube:Lcm/aptoide/pt/model/v7/Event$Name;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "listApps"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->listApps:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 30
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "listStores"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->listStores:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 31
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "getStore"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->getStore:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 32
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "getStoreWidgets"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->getStoreWidgets:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 35
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "getUserTimeline"

    invoke-direct {v0, v1, v7}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->getUserTimeline:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 36
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "listReviews"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->listReviews:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 37
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "listComments"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->listComments:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 38
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "getMyStoresSubscribed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->getMyStoresSubscribed:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 39
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "getStoresRecommended"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->getStoresRecommended:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 42
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "myStores"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->myStores:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 43
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "myUpdates"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->myUpdates:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 44
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "myExcludedUpdates"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->myExcludedUpdates:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 45
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "myScheduledDownloads"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->myScheduledDownloads:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 46
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "myRollbacks"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->myRollbacks:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 47
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "getAds"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->getAds:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 48
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "myDownloads"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->myDownloads:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 51
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "facebook"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->facebook:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 52
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "twitch"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->twitch:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 53
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "twitter"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->twitter:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 54
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "youtube"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->youtube:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 57
    new-instance v0, Lcm/aptoide/pt/model/v7/Event$Name;

    const-string v1, "getReviews"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->getReviews:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 27
    const/16 v0, 0x15

    new-array v0, v0, [Lcm/aptoide/pt/model/v7/Event$Name;

    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Name;->listApps:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Name;->listStores:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Name;->getStore:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Name;->getStoreWidgets:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v1, v0, v6

    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Name;->getUserTimeline:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->listReviews:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->listComments:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->getMyStoresSubscribed:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->getStoresRecommended:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->myStores:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->myUpdates:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->myExcludedUpdates:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->myScheduledDownloads:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->myRollbacks:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->getAds:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->myDownloads:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->facebook:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->twitch:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->twitter:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->youtube:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcm/aptoide/pt/model/v7/Event$Name;->getReviews:Lcm/aptoide/pt/model/v7/Event$Name;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->$VALUES:[Lcm/aptoide/pt/model/v7/Event$Name;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Event$Name;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/Event$Name;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/model/v7/Event$Name;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->$VALUES:[Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v0}, [Lcm/aptoide/pt/model/v7/Event$Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/model/v7/Event$Name;

    return-object v0
.end method
