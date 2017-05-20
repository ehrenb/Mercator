.class public final enum Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;
.super Ljava/lang/Enum;
.source "AppViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

.field public static final enum OPEN_AND_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

.field public static final enum OPEN_ONLY:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

.field public static final enum OPEN_WITH_INSTALL_POPUP:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 767
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    const-string v1, "OPEN_ONLY"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_ONLY:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 771
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    const-string v1, "OPEN_AND_INSTALL"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_AND_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 775
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    const-string v1, "OPEN_WITH_INSTALL_POPUP"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_WITH_INSTALL_POPUP:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 763
    const/4 v0, 0x3

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_ONLY:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_AND_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_WITH_INSTALL_POPUP:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    aput-object v1, v0, v4

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

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
    .line 763
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;
    .locals 1

    .prologue
    .line 763
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;
    .locals 1

    .prologue
    .line 763
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    return-object v0
.end method
