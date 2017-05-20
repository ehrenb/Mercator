.class public final enum Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;
.super Ljava/lang/Enum;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSizeErrors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

.field public static final enum MAX_HEIGHT:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

.field public static final enum MAX_IMAGE_SIZE:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

.field public static final enum MAX_WIDTH:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

.field public static final enum MIN_HEIGHT:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

.field public static final enum MIN_WIDTH:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1604
    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    const-string v1, "MIN_HEIGHT"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MIN_HEIGHT:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    const-string v1, "MAX_HEIGHT"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MAX_HEIGHT:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    const-string v1, "MIN_WIDTH"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MIN_WIDTH:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    const-string v1, "MAX_WIDTH"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MAX_WIDTH:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    const-string v1, "MAX_IMAGE_SIZE"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MAX_IMAGE_SIZE:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    .line 1603
    const/4 v0, 0x5

    new-array v0, v0, [Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MIN_HEIGHT:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MAX_HEIGHT:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MIN_WIDTH:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MAX_WIDTH:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->MAX_IMAGE_SIZE:Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    aput-object v1, v0, v6

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->$VALUES:[Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

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
    .line 1603
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;
    .locals 1

    .prologue
    .line 1603
    const-class v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;
    .locals 1

    .prologue
    .line 1603
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->$VALUES:[Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    invoke-virtual {v0}, [Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    return-object v0
.end method
