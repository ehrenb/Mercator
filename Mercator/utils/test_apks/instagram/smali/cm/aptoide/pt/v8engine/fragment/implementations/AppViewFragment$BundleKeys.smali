.class public final enum Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;
.super Ljava/lang/Enum;
.source "AppViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "BundleKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

.field public static final enum APP_ID:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

.field public static final enum MD5:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

.field public static final enum MINIMAL_AD:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

.field public static final enum PACKAGE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

.field public static final enum SHOULD_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

.field public static final enum STORE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 755
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    const-string v1, "APP_ID"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->APP_ID:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    .line 756
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    const-string v1, "STORE_NAME"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->STORE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    .line 757
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    const-string v1, "MINIMAL_AD"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->MINIMAL_AD:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    .line 758
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    const-string v1, "PACKAGE_NAME"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->PACKAGE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    .line 759
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    const-string v1, "SHOULD_INSTALL"

    invoke-direct {v0, v1, v7}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->SHOULD_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    .line 760
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    const-string v1, "MD5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->MD5:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    .line 754
    const/4 v0, 0x6

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->APP_ID:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->STORE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->MINIMAL_AD:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->PACKAGE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    aput-object v1, v0, v6

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->SHOULD_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->MD5:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

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
    .line 754
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;
    .locals 1

    .prologue
    .line 754
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;
    .locals 1

    .prologue
    .line 754
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    return-object v0
.end method
