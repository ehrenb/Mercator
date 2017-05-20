.class public final enum Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;
.super Ljava/lang/Enum;
.source "BaseV7Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/BaseV7Response$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

.field public static final enum FAIL:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

.field public static final enum OK:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

.field public static final enum QUEUED:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->OK:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    new-instance v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->QUEUED:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    new-instance v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->FAIL:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    sget-object v1, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->OK:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->QUEUED:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->FAIL:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->$VALUES:[Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->$VALUES:[Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    invoke-virtual {v0}, [Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    return-object v0
.end method
