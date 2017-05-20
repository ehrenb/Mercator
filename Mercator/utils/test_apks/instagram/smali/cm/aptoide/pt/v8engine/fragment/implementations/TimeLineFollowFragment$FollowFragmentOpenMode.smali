.class public final enum Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;
.super Ljava/lang/Enum;
.source "TimeLineFollowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FollowFragmentOpenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

.field public static final enum FOLLOWERS:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

.field public static final enum FOLLOWING:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

.field public static final enum LIKE_PREVIEW:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    const-string v1, "FOLLOWERS"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->FOLLOWERS:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    const-string v1, "FOLLOWING"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->FOLLOWING:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    const-string v1, "LIKE_PREVIEW"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->LIKE_PREVIEW:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->FOLLOWERS:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->FOLLOWING:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->LIKE_PREVIEW:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    aput-object v1, v0, v4

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

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
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;
    .locals 1

    .prologue
    .line 205
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    return-object v0
.end method
