.class public final enum Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;
.super Ljava/lang/Enum;
.source "GetAppMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

.field public static final enum FAKE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

.field public static final enum FREEZE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

.field public static final enum GOOD:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

.field public static final enum LICENSE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

.field public static final enum VIRUS:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    const-string v1, "FAKE"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->FAKE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    new-instance v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    const-string v1, "FREEZE"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->FREEZE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    new-instance v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    const-string v1, "GOOD"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->GOOD:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    new-instance v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    const-string v1, "LICENSE"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->LICENSE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    new-instance v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    const-string v1, "VIRUS"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->VIRUS:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    sget-object v1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->FAKE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->FREEZE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->GOOD:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->LICENSE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->VIRUS:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->$VALUES:[Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->$VALUES:[Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    invoke-virtual {v0}, [Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    return-object v0
.end method
