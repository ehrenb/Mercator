.class final enum Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;
.super Ljava/lang/Enum;
.source "ScreenshotsViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BundleArgs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

.field public static final enum POSITION:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

.field public static final enum URIs:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    const-string v1, "POSITION"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->POSITION:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    const-string v1, "URIs"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->URIs:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->POSITION:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->URIs:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    aput-object v1, v0, v3

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

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
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    return-object v0
.end method
