.class public final enum Lcm/aptoide/pt/utils/GenericDialogs$EResponse;
.super Ljava/lang/Enum;
.source "GenericDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/GenericDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

.field public static final enum CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

.field public static final enum NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

.field public static final enum SHARE_APP:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

.field public static final enum SHARE_EXTERNAL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

.field public static final enum SHARE_TIMELINE:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

.field public static final enum YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    .line 243
    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    const-string v1, "NO"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    .line 247
    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    .line 249
    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    const-string v1, "SHARE_APP"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_APP:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    .line 251
    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    const-string v1, "SHARE_EXTERNAL"

    invoke-direct {v0, v1, v7}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_EXTERNAL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    .line 253
    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    const-string v1, "SHARE_TIMELINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_TIMELINE:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    .line 234
    const/4 v0, 0x6

    new-array v0, v0, [Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_APP:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    aput-object v1, v0, v6

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_EXTERNAL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_TIMELINE:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->$VALUES:[Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

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
    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/utils/GenericDialogs$EResponse;
    .locals 1

    .prologue
    .line 234
    const-class v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/utils/GenericDialogs$EResponse;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->$VALUES:[Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {v0}, [Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    return-object v0
.end method
