.class public Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$DeepLinksTargets;
.super Ljava/lang/Object;
.source "DeepLinkIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeepLinksTargets"
.end annotation


# static fields
.field public static final APP_VIEW_FRAGMENT:Ljava/lang/String; = "appViewFragment"

.field public static final FROM_AD:Ljava/lang/String; = "fromAd"

.field public static final FROM_DOWNLOAD_NOTIFICATION:Ljava/lang/String; = "fromDownloadNotification"

.field public static final FROM_TIMELINE:Ljava/lang/String; = "fromTimeline"

.field public static final GENERIC_DEEPLINK:Ljava/lang/String; = "generic_deeplink"

.field public static final NEW_REPO:Ljava/lang/String; = "newrepo"

.field public static final NEW_UPDATES:Ljava/lang/String; = "new_updates"

.field public static final SCHEDULE_DEEPLINK:Ljava/lang/String; = "schedule_downloads"

.field public static final SEARCH_FRAGMENT:Ljava/lang/String; = "searchFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
