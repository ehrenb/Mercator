.class public final enum Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/accountmanager/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserAccessState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

.field public static final enum PRIVATE:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

.field public static final enum PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

.field public static final enum UNLISTED:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    .line 37
    new-instance v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PRIVATE:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    .line 38
    new-instance v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    const-string v1, "UNLISTED"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->UNLISTED:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    sget-object v1, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PRIVATE:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->UNLISTED:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    aput-object v1, v0, v4

    sput-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->$VALUES:[Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->$VALUES:[Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    invoke-virtual {v0}, [Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    return-object v0
.end method
