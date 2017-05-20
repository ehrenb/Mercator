.class public final enum Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;
.super Ljava/lang/Enum;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/store/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SocialChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

.field public static final enum FACEBOOK:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

.field public static final enum TWITCH:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

.field public static final enum TWITTER:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

.field public static final enum YOUTUBE:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->FACEBOOK:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    .line 30
    new-instance v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    const-string v1, "TWITTER"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->TWITTER:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    .line 31
    new-instance v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    const-string v1, "YOUTUBE"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->YOUTUBE:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    .line 32
    new-instance v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    const-string v1, "TWITCH"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->TWITCH:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    sget-object v1, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->FACEBOOK:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->TWITTER:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->YOUTUBE:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->TWITCH:Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    aput-object v1, v0, v5

    sput-object v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->$VALUES:[Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->$VALUES:[Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    invoke-virtual {v0}, [Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    return-object v0
.end method
