.class public Lcom/google/android/gms/internal/zzr;
.super Ljava/lang/Exception;


# instance fields
.field public final a:Lcom/google/android/gms/internal/hf;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzr;->a:Lcom/google/android/gms/internal/hf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/hf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzr;->a:Lcom/google/android/gms/internal/hf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzr;->a:Lcom/google/android/gms/internal/hf;

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzr;->b:J

    return-void
.end method
