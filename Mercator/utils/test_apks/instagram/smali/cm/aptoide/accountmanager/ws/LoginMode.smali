.class public final enum Lcm/aptoide/accountmanager/ws/LoginMode;
.super Ljava/lang/Enum;
.source "LoginMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/accountmanager/ws/LoginMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/accountmanager/ws/LoginMode;

.field public static final enum ABAN:Lcm/aptoide/accountmanager/ws/LoginMode;

.field public static final enum APTOIDE:Lcm/aptoide/accountmanager/ws/LoginMode;

.field public static final enum FACEBOOK:Lcm/aptoide/accountmanager/ws/LoginMode;

.field public static final enum GOOGLE:Lcm/aptoide/accountmanager/ws/LoginMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcm/aptoide/accountmanager/ws/LoginMode;

    const-string v1, "APTOIDE"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/accountmanager/ws/LoginMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->APTOIDE:Lcm/aptoide/accountmanager/ws/LoginMode;

    new-instance v0, Lcm/aptoide/accountmanager/ws/LoginMode;

    const-string v1, "GOOGLE"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/accountmanager/ws/LoginMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->GOOGLE:Lcm/aptoide/accountmanager/ws/LoginMode;

    new-instance v0, Lcm/aptoide/accountmanager/ws/LoginMode;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/accountmanager/ws/LoginMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->FACEBOOK:Lcm/aptoide/accountmanager/ws/LoginMode;

    new-instance v0, Lcm/aptoide/accountmanager/ws/LoginMode;

    const-string v1, "ABAN"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/accountmanager/ws/LoginMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->ABAN:Lcm/aptoide/accountmanager/ws/LoginMode;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcm/aptoide/accountmanager/ws/LoginMode;

    sget-object v1, Lcm/aptoide/accountmanager/ws/LoginMode;->APTOIDE:Lcm/aptoide/accountmanager/ws/LoginMode;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/accountmanager/ws/LoginMode;->GOOGLE:Lcm/aptoide/accountmanager/ws/LoginMode;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/accountmanager/ws/LoginMode;->FACEBOOK:Lcm/aptoide/accountmanager/ws/LoginMode;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/accountmanager/ws/LoginMode;->ABAN:Lcm/aptoide/accountmanager/ws/LoginMode;

    aput-object v1, v0, v5

    sput-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->$VALUES:[Lcm/aptoide/accountmanager/ws/LoginMode;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/LoginMode;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/ws/LoginMode;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/accountmanager/ws/LoginMode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->$VALUES:[Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-virtual {v0}, [Lcm/aptoide/accountmanager/ws/LoginMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/accountmanager/ws/LoginMode;

    return-object v0
.end method
