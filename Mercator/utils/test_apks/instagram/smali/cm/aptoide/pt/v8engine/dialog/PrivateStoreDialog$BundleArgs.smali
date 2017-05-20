.class final enum Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;
.super Ljava/lang/Enum;
.source "PrivateStoreDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BundleArgs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

.field public static final enum STORE_NAME:Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    const-string v1, "STORE_NAME"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->STORE_NAME:Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    sget-object v1, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->STORE_NAME:Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    aput-object v1, v0, v2

    sput-object v0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->$VALUES:[Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

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
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;
    .locals 1

    .prologue
    .line 160
    const-class v0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->$VALUES:[Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    return-object v0
.end method
