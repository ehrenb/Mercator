.class final enum Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;
.super Ljava/lang/Enum;
.source "RemoteInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

.field public static final enum NO_DEVICES_FOUND:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

.field public static final enum NO_NETWORK:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    const-string v1, "NO_NETWORK"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->NO_NETWORK:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    const-string v1, "NO_DEVICES_FOUND"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->NO_DEVICES_FOUND:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    const/4 v0, 0x2

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    sget-object v1, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->NO_NETWORK:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->NO_DEVICES_FOUND:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    aput-object v1, v0, v3

    sput-object v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->$VALUES:[Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;
    .locals 1

    .prologue
    .line 182
    const-class v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->$VALUES:[Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    return-object v0
.end method
