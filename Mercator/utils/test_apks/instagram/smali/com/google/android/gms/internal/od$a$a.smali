.class Lcom/google/android/gms/internal/od$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/od$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/od$a$a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/od$a$a;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/od$a$a;->c:J

    return-void
.end method
